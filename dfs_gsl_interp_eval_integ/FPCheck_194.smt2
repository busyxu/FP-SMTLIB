(declare-fun x1_ack!2257 () (_ BitVec 64))
(declare-fun x0_ack!2261 () (_ BitVec 64))
(declare-fun x2_ack!2258 () (_ BitVec 64))
(declare-fun b_ack!2260 () (_ BitVec 64))
(declare-fun a_ack!2259 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2261) ((_ to_fp 11 53) x1_ack!2257)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2257) ((_ to_fp 11 53) x2_ack!2258)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2257)
                       ((_ to_fp 11 53) x0_ack!2261))
               ((_ to_fp 11 53) x0_ack!2261))
       ((_ to_fp 11 53) x1_ack!2257)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2257)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2257)
                       ((_ to_fp 11 53) x0_ack!2261)))
       ((_ to_fp 11 53) x0_ack!2261)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2258)
                       ((_ to_fp 11 53) x1_ack!2257))
               ((_ to_fp 11 53) x1_ack!2257))
       ((_ to_fp 11 53) x2_ack!2258)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2258)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2258)
                       ((_ to_fp 11 53) x1_ack!2257)))
       ((_ to_fp 11 53) x1_ack!2257)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2257)
                    ((_ to_fp 11 53) x0_ack!2261))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2258)
                    ((_ to_fp 11 53) x1_ack!2257))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2259) ((_ to_fp 11 53) b_ack!2260))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2259) ((_ to_fp 11 53) x0_ack!2261))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2260) ((_ to_fp 11 53) x2_ack!2258))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2259) ((_ to_fp 11 53) b_ack!2260))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2259) ((_ to_fp 11 53) x0_ack!2261))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2259) ((_ to_fp 11 53) x1_ack!2257))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2260) ((_ to_fp 11 53) x0_ack!2261))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2260) ((_ to_fp 11 53) x1_ack!2257)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2257) ((_ to_fp 11 53) b_ack!2260))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2257)
                    ((_ to_fp 11 53) x0_ack!2261))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2258)
                    ((_ to_fp 11 53) x1_ack!2257))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2257)
          ((_ to_fp 11 53) x1_ack!2257))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2260)
          ((_ to_fp 11 53) x1_ack!2257))))

(check-sat)
(exit)

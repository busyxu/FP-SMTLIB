(declare-fun x1_ack!6396 () (_ BitVec 64))
(declare-fun x0_ack!6400 () (_ BitVec 64))
(declare-fun x2_ack!6397 () (_ BitVec 64))
(declare-fun b_ack!6399 () (_ BitVec 64))
(declare-fun a_ack!6398 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6400) ((_ to_fp 11 53) x1_ack!6396)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6396) ((_ to_fp 11 53) x2_ack!6397)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6396)
                       ((_ to_fp 11 53) x0_ack!6400))
               ((_ to_fp 11 53) x0_ack!6400))
       ((_ to_fp 11 53) x1_ack!6396)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6396)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6396)
                       ((_ to_fp 11 53) x0_ack!6400)))
       ((_ to_fp 11 53) x0_ack!6400)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6397)
                       ((_ to_fp 11 53) x1_ack!6396))
               ((_ to_fp 11 53) x1_ack!6396))
       ((_ to_fp 11 53) x2_ack!6397)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6397)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6397)
                       ((_ to_fp 11 53) x1_ack!6396)))
       ((_ to_fp 11 53) x1_ack!6396)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6396)
                    ((_ to_fp 11 53) x0_ack!6400))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6397)
                    ((_ to_fp 11 53) x1_ack!6396))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6398) ((_ to_fp 11 53) b_ack!6399))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6398) ((_ to_fp 11 53) x0_ack!6400))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6399) ((_ to_fp 11 53) x2_ack!6397))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6398) ((_ to_fp 11 53) b_ack!6399))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6398) ((_ to_fp 11 53) x0_ack!6400))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6398) ((_ to_fp 11 53) x1_ack!6396)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6396) ((_ to_fp 11 53) a_ack!6398))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6399) ((_ to_fp 11 53) x1_ack!6396))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6399) ((_ to_fp 11 53) x2_ack!6397))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6397)
                    ((_ to_fp 11 53) x1_ack!6396))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6398)
          ((_ to_fp 11 53) x1_ack!6396))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6399)
          ((_ to_fp 11 53) x1_ack!6396))))

(check-sat)
(exit)

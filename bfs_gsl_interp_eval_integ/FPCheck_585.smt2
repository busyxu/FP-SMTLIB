(declare-fun x1_ack!7352 () (_ BitVec 64))
(declare-fun x0_ack!7356 () (_ BitVec 64))
(declare-fun x2_ack!7353 () (_ BitVec 64))
(declare-fun b_ack!7355 () (_ BitVec 64))
(declare-fun a_ack!7354 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7356) ((_ to_fp 11 53) x1_ack!7352)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7352) ((_ to_fp 11 53) x2_ack!7353)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7352)
                       ((_ to_fp 11 53) x0_ack!7356))
               ((_ to_fp 11 53) x0_ack!7356))
       ((_ to_fp 11 53) x1_ack!7352)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7352)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7352)
                       ((_ to_fp 11 53) x0_ack!7356)))
       ((_ to_fp 11 53) x0_ack!7356)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7353)
                       ((_ to_fp 11 53) x1_ack!7352))
               ((_ to_fp 11 53) x1_ack!7352))
       ((_ to_fp 11 53) x2_ack!7353)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7353)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7353)
                       ((_ to_fp 11 53) x1_ack!7352)))
       ((_ to_fp 11 53) x1_ack!7352)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7352)
                    ((_ to_fp 11 53) x0_ack!7356))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7353)
                    ((_ to_fp 11 53) x1_ack!7352))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7354) ((_ to_fp 11 53) b_ack!7355))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7354) ((_ to_fp 11 53) x0_ack!7356))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7355) ((_ to_fp 11 53) x2_ack!7353))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7354) ((_ to_fp 11 53) b_ack!7355))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7354) ((_ to_fp 11 53) x0_ack!7356))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7354) ((_ to_fp 11 53) x1_ack!7352))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7355) ((_ to_fp 11 53) x0_ack!7356))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7355) ((_ to_fp 11 53) x1_ack!7352)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7352) ((_ to_fp 11 53) b_ack!7355))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7352)
                    ((_ to_fp 11 53) x0_ack!7356))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7353)
                    ((_ to_fp 11 53) x1_ack!7352))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7352)
          ((_ to_fp 11 53) x1_ack!7352))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7355)
          ((_ to_fp 11 53) x1_ack!7352))))

(check-sat)
(exit)

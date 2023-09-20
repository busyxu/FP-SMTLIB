(declare-fun x1_ack!7905 () (_ BitVec 64))
(declare-fun x0_ack!7909 () (_ BitVec 64))
(declare-fun x2_ack!7906 () (_ BitVec 64))
(declare-fun b_ack!7908 () (_ BitVec 64))
(declare-fun a_ack!7907 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7909) ((_ to_fp 11 53) x1_ack!7905)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7905) ((_ to_fp 11 53) x2_ack!7906)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7905)
                       ((_ to_fp 11 53) x0_ack!7909))
               ((_ to_fp 11 53) x0_ack!7909))
       ((_ to_fp 11 53) x1_ack!7905)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7905)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7905)
                       ((_ to_fp 11 53) x0_ack!7909)))
       ((_ to_fp 11 53) x0_ack!7909)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7906)
                       ((_ to_fp 11 53) x1_ack!7905))
               ((_ to_fp 11 53) x1_ack!7905))
       ((_ to_fp 11 53) x2_ack!7906)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7906)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7906)
                       ((_ to_fp 11 53) x1_ack!7905)))
       ((_ to_fp 11 53) x1_ack!7905)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7905)
                    ((_ to_fp 11 53) x0_ack!7909))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7906)
                    ((_ to_fp 11 53) x1_ack!7905))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7907) ((_ to_fp 11 53) b_ack!7908))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7907) ((_ to_fp 11 53) x0_ack!7909))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7908) ((_ to_fp 11 53) x2_ack!7906))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7907) ((_ to_fp 11 53) b_ack!7908))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7907) ((_ to_fp 11 53) x0_ack!7909))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7907) ((_ to_fp 11 53) x1_ack!7905))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7908) ((_ to_fp 11 53) x0_ack!7909)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7905)
                    ((_ to_fp 11 53) x0_ack!7909))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!7907)
          ((_ to_fp 11 53) x0_ack!7909))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!7907)
          ((_ to_fp 11 53) x0_ack!7909))))

(check-sat)
(exit)

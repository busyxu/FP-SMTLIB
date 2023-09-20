(declare-fun b_ack!114 () (_ BitVec 64))
(declare-fun x_ack!115 () (_ BitVec 64))
(declare-fun a_ack!113 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!115)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!114)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!115) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!115)
                    ((_ to_fp 11 53) b_ack!114))
            ((_ to_fp 11 53) a_ack!113))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!115)
                    ((_ to_fp 11 53) b_ack!114))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!115)
                    ((_ to_fp 11 53) b_ack!114))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!115)
                     ((_ to_fp 11 53) b_ack!114))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!113)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!113) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!113) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!113)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!115)
                     ((_ to_fp 11 53) b_ack!114)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!115)
                    ((_ to_fp 11 53) b_ack!114))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!113)
                    ((_ to_fp 11 53) #x7ff8000000000001)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!113) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!115)
                    ((_ to_fp 11 53) b_ack!114))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!113)))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!115)
          ((_ to_fp 11 53) b_ack!114))
  a_ack!113))

(check-sat)
(exit)

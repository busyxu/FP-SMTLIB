(declare-fun b_ack!121 () (_ BitVec 64))
(declare-fun x_ack!122 () (_ BitVec 64))
(declare-fun a_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!122)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!121)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!122) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!122)
                    ((_ to_fp 11 53) b_ack!121))
            ((_ to_fp 11 53) a_ack!120))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!122)
                    ((_ to_fp 11 53) b_ack!121))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!122)
                    ((_ to_fp 11 53) b_ack!121))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!122)
                     ((_ to_fp 11 53) b_ack!121))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!120)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!120)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!122)
                     ((_ to_fp 11 53) b_ack!121)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!122)
                    ((_ to_fp 11 53) b_ack!121))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!120)
                    ((_ to_fp 11 53) #x7ff8000000000001)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!122)
                    ((_ to_fp 11 53) b_ack!121))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!120)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!122)
                  ((_ to_fp 11 53) b_ack!121))
          ((_ to_fp 11 53) a_ack!120))
  a_ack!120))

(check-sat)
(exit)

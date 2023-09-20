(declare-fun a_ack!542 () (_ BitVec 64))
(declare-fun b_ack!541 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!542) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!541) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!541) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!541) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!541)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!542)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!542) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!542) ((_ to_fp 11 53) b_ack!541)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!542)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    ((_ to_fp 11 53) b_ack!541)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!542) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!541)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!542)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!541)
                       ((_ to_fp 11 53) a_ack!542))
               ((_ to_fp 11 53) a_ack!542))
       ((_ to_fp 11 53) b_ack!541)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!541)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!541)
                       ((_ to_fp 11 53) a_ack!542)))
       ((_ to_fp 11 53) a_ack!542)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!541)
          ((_ to_fp 11 53) a_ack!542))
  a_ack!542))

(check-sat)
(exit)

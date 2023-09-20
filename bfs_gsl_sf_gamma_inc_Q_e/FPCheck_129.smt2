(declare-fun a_ack!354 () (_ BitVec 64))
(declare-fun b_ack!353 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!354) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!354) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!353)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!354)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!354) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!353)
                       ((_ to_fp 11 53) a_ack!354))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!353)
                       ((_ to_fp 11 53) a_ack!354)))
       ((_ to_fp 11 53) a_ack!354)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!353)
          ((_ to_fp 11 53) a_ack!354))
  a_ack!354))

(check-sat)
(exit)

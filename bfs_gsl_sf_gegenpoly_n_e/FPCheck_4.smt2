(declare-fun b_ack!31 () (_ BitVec 64))
(declare-fun a_ack!33 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!32 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!31) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!33 #x00000000)))
(assert (not (= #x00000000 a_ack!33)))
(assert (= #x00000001 a_ack!33))
(assert (fp.eq ((_ to_fp 11 53) b_ack!31) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!32)))))

(check-sat)
(exit)

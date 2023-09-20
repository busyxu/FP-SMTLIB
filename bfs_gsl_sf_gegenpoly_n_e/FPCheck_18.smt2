(declare-fun b_ack!121 () (_ BitVec 64))
(declare-fun a_ack!123 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!122 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!121) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!123 #x00000000)))
(assert (not (= #x00000000 a_ack!123)))
(assert (not (= #x00000001 a_ack!123)))
(assert (= #x00000002 a_ack!123))
(assert (fp.eq ((_ to_fp 11 53) b_ack!121) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!122))
  c_ack!122))

(check-sat)
(exit)

(declare-fun a_ack!123 () (_ BitVec 32))
(declare-fun b_ack!122 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!123 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!122) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!122) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!123)))
(assert (not (= #x00000001 a_ack!123)))
(assert (not (= #x00000002 a_ack!123)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!122) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!122) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!123 #x000186a0))
(assert (bvsle #x00000002 a_ack!123))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!122)
          ((_ to_fp 11 53) #x4008000000000000))
  b_ack!122))

(check-sat)
(exit)

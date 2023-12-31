(declare-fun c_ack!131 () (_ BitVec 64))
(declare-fun b_ack!130 () (_ BitVec 32))
(declare-fun a_ack!132 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!131) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!132 b_ack!130)))
(assert (not (= #x00000000 b_ack!130)))
(assert (not (= #x00000000 a_ack!132)))
(assert (not (bvslt b_ack!130 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!131) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!131) ((_ to_fp 11 53) #xc059000000000000))))
(assert (not (bvslt a_ack!132 #x00000000)))
(assert (not (bvslt a_ack!132 #x00000000)))
(assert (not (= a_ack!132 b_ack!130)))
(assert (not (= #x00000001 a_ack!132)))
(assert (not (= b_ack!130 (bvadd #x00000001 a_ack!132))))
(assert (not (= a_ack!132 (bvadd #x00000001 b_ack!130))))
(assert (not (= a_ack!132 (bvadd #x00000002 b_ack!130))))
(assert (not (= b_ack!130 (bvmul #x00000002 a_ack!132))))
(assert (bvslt b_ack!130 #x0000000a))
(assert (bvslt a_ack!132 #x0000000a))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!131))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!132)
  (fp.abs ((_ to_fp 11 53) c_ack!131))))

(check-sat)
(exit)

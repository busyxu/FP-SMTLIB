(declare-fun b_ack!783 () (_ BitVec 32))
(declare-fun a_ack!785 () (_ BitVec 32))
(declare-fun c_ack!784 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!783 #x00000000)))
(assert (not (bvslt a_ack!785 b_ack!783)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!784) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!784) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!783))
(assert (not (bvslt a_ack!785 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!784) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!784) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!785)))
(assert (not (= #x00000001 a_ack!785)))
(assert (= #x00000002 a_ack!785))
(assert (FPCHECK_FMUL_ACCURACY #x4008000000000000 c_ack!784))

(check-sat)
(exit)

(declare-fun a_ack!530 () (_ BitVec 32))
(declare-fun b_ack!529 () (_ BitVec 64))
(assert (not (bvslt a_ack!530 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!529) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!530)))
(assert (not (= #x00000001 a_ack!530)))
(assert (not (= #x00000002 a_ack!530)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!529) ((_ to_fp 11 53) #x4008000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!530) #x00000000)))
(assert (not (= #x00000000 (bvand (bvadd #x00000001 a_ack!530) #x00000001))))

(check-sat)
(exit)

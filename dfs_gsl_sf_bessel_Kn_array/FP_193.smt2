(declare-fun a_ack!5201 () (_ BitVec 32))
(declare-fun b_ack!5199 () (_ BitVec 32))
(declare-fun c_ack!5200 () (_ BitVec 64))
(assert (not (bvslt a_ack!5201 #x00000000)))
(assert (not (bvslt b_ack!5199 a_ack!5201)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!5199)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!5200) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5200) ((_ to_fp 11 53) #x4020000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!5200) ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!5200) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5200) ((_ to_fp 11 53) #x4020000000000000))))

(check-sat)
(exit)

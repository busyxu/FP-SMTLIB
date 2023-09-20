(declare-fun a_ack!190 () (_ BitVec 32))
(declare-fun b_ack!188 () (_ BitVec 32))
(declare-fun c_ack!189 () (_ BitVec 64))
(assert (not (bvslt a_ack!190 #x00000000)))
(assert (not (bvslt b_ack!188 a_ack!190)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!189) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle a_ack!190 b_ack!188))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvsub b_ack!188 a_ack!190)))
       #x0000000000000319))
(assert (not (bvsle a_ack!190 (bvadd #xffffffff b_ack!188))))

(check-sat)
(exit)

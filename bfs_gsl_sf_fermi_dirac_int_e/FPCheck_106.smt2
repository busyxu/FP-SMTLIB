(declare-fun a_ack!337 () (_ BitVec 32))
(declare-fun b_ack!336 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!337 #xffffffff)))
(assert (= #xffffffff a_ack!337))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!336) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!336) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW (fp.abs ((_ to_fp 11 53) b_ack!336)) #x3ff0000000000000))

(check-sat)
(exit)

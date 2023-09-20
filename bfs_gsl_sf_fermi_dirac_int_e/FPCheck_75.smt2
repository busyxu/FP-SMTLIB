(declare-fun a_ack!241 () (_ BitVec 32))
(declare-fun b_ack!240 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (bvslt a_ack!241 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!241)))
(assert (not (bvslt a_ack!241 #xffffff9b)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!241))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!240) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvsub #xffffffff a_ack!241)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvsub #xffffffff a_ack!241)))
       #x0000000000000321))
(assert (not (bvsle #x00000001 (bvsub #xfffffffe a_ack!241))))
(assert (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 (CF_exp b_ack!240)))

(check-sat)
(exit)

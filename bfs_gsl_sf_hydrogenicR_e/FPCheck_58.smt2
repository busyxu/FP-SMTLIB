(declare-fun a_ack!389 () (_ BitVec 32))
(declare-fun b_ack!386 () (_ BitVec 32))
(declare-fun c_ack!387 () (_ BitVec 64))
(declare-fun d_ack!388 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!389 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!389) b_ack!386)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!388) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvule (bvadd a_ack!389 b_ack!386) #x000000aa))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd a_ack!389 b_ack!386))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd a_ack!389 b_ack!386))))))
  (bvult a!1 #x0000000000001001)))
(assert (not (bvule (bvadd #xffffffff (bvsub a_ack!389 b_ack!386)) #x000000aa)))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvadd #xffffffff (bvsub a_ack!389 b_ack!386)))
  #x3ff0000000000000))

(check-sat)
(exit)

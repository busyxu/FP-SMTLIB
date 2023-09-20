(declare-fun a_ack!137 () (_ BitVec 32))
(declare-fun b_ack!134 () (_ BitVec 32))
(declare-fun c_ack!135 () (_ BitVec 64))
(declare-fun d_ack!136 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!137 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!137) b_ack!134)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!136) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!135))
                   ((_ to_fp 11 53) roundNearestTiesToEven a_ack!137))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!1)))

(check-sat)
(exit)

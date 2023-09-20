(declare-fun a_ack!2279 () (_ BitVec 32))
(declare-fun b_ack!2277 () (_ BitVec 32))
(declare-fun c_ack!2278 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2277 a_ack!2279)))
(assert (not (bvslt a_ack!2279 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!2277))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2278))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.abs ((_ to_fp 11 53) c_ack!2278)))
  (fp.abs ((_ to_fp 11 53) c_ack!2278))))

(check-sat)
(exit)

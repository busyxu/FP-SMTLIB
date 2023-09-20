(declare-fun limit_ack!172 () (_ BitVec 64))
(declare-fun a_ack!173 () (_ BitVec 64))
(declare-fun b_ack!169 () (_ BitVec 64))
(declare-fun epsabs_ack!171 () (_ BitVec 64))
(declare-fun c_ack!170 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!172)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!169) ((_ to_fp 11 53) a_ack!173))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!171)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!170) ((_ to_fp 11 53) a_ack!173))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!170) ((_ to_fp 11 53) b_ack!169))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!170))
  b_ack!169))

(check-sat)
(exit)

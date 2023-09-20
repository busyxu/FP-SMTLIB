(declare-fun limit_ack!361 () (_ BitVec 64))
(declare-fun a_ack!362 () (_ BitVec 64))
(declare-fun b_ack!358 () (_ BitVec 64))
(declare-fun epsabs_ack!360 () (_ BitVec 64))
(declare-fun c_ack!359 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!361)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!358) ((_ to_fp 11 53) a_ack!362)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!360)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!359) ((_ to_fp 11 53) a_ack!362))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!359) ((_ to_fp 11 53) b_ack!358))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!359))
  a_ack!362))

(check-sat)
(exit)

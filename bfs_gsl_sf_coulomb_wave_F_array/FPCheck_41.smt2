(declare-fun d_ack!247 () (_ BitVec 64))
(declare-fun b_ack!246 () (_ BitVec 32))
(declare-fun a_ack!249 () (_ BitVec 64))
(declare-fun c_ack!248 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!247) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!246))
(assert (not (bvsle #x00000001 b_ack!246)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!249) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!248)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!248))
                           ((_ to_fp 11 53) #x400921fb54442d18)))))
  (FPCHECK_FADD_UNDERFLOW #x0000000000000000 a!1)))

(check-sat)
(exit)

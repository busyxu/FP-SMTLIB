(declare-fun d_ack!243 () (_ BitVec 64))
(declare-fun b_ack!242 () (_ BitVec 32))
(declare-fun a_ack!245 () (_ BitVec 64))
(declare-fun c_ack!244 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!243) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!242))
(assert (not (bvsle #x00000001 b_ack!242)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!245) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!244)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!244))
                           ((_ to_fp 11 53) #x400921fb54442d18)))))
  (FPCHECK_FADD_OVERFLOW #x0000000000000000 a!1)))

(check-sat)
(exit)

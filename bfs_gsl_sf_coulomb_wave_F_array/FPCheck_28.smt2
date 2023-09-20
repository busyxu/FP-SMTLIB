(declare-fun d_ack!171 () (_ BitVec 64))
(declare-fun b_ack!170 () (_ BitVec 32))
(declare-fun a_ack!173 () (_ BitVec 64))
(declare-fun c_ack!172 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!171) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!170))
(assert (not (bvsle #x00000001 b_ack!170)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!173) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!172)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!172))
                           ((_ to_fp 11 53) #x400921fb54442d18)))))
  (FPCHECK_FADD_OVERFLOW a!1 #x8000000000000000)))

(check-sat)
(exit)

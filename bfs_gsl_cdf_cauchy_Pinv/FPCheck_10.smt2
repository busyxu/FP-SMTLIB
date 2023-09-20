(declare-fun x_ack!34 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_tan ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!33 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!34) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!34) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!34) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a_ack!33))
  (CF_tan (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x400921fb54442d18)
                  ((_ to_fp 11 53) x_ack!34)))))

(check-sat)
(exit)

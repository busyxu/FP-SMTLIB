(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!53 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!52 () (_ BitVec 64))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!53)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!53)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d19000000000000)))))
(assert (FPCHECK_FSUB_OVERFLOW
  b_ack!52
  (CF_floor (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!52)
                    ((_ to_fp 11 53) #x3fe0000000000000)))))

(check-sat)
(exit)

(declare-fun a_ack!52 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!51 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!52) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!52) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!52)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!52)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!51) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!52)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!52 #x4000000000000000))

(check-sat)
(exit)

(declare-fun d_ack!1438 () (_ BitVec 64))
(declare-fun b_ack!1437 () (_ BitVec 32))
(declare-fun a_ack!1440 () (_ BitVec 64))
(declare-fun c_ack!1439 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) d_ack!1438) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!1437)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1440) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1439)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1439)))))
(assert (not (fp.gt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1439)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!1439))
                           (fp.abs ((_ to_fp 11 53) c_ack!1439)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!1439))
                           (fp.abs ((_ to_fp 11 53) c_ack!1439))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (FPCHECK_FADD_ACCURACY (CF_log (fp.abs ((_ to_fp 11 53) c_ack!1439))) a!2))))

(check-sat)
(exit)

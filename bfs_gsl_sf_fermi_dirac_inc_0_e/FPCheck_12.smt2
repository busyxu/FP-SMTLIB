(declare-fun b_ack!42 () (_ BitVec 64))
(declare-fun a_ack!43 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!42) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!42)
                    ((_ to_fp 11 53) a_ack!43))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!42)
                    ((_ to_fp 11 53) a_ack!43))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!42)
               ((_ to_fp 11 53) a_ack!43))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!42)
                                   ((_ to_fp 11 53) a_ack!43))))))
  (FPCHECK_FSUB_ACCURACY
    (CF_log a!1)
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!42)
            ((_ to_fp 11 53) a_ack!43)))))

(check-sat)
(exit)

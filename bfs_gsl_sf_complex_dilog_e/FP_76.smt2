(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1454 () (_ BitVec 64))
(declare-fun a_ack!1455 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1455)
               (CF_sin b_ack!1454))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!1455)
                (CF_cos b_ack!1454))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc00921fb54442d18)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1455)
                                   (CF_cos b_ack!1454))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xc00921fb54442d18))
         (CF_log (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!1455)
                         (CF_cos b_ack!1454))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1455)
                                   (CF_cos b_ack!1454))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc00921fb54442d18)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1455)
                                   (CF_cos b_ack!1454))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1455)
                                   (CF_cos b_ack!1454))))))
  (fp.eq a!2 ((_ to_fp 11 53) #xc00921fb54442d18)))))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1455)
                     (CF_cos b_ack!1454))
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)

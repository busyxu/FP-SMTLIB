(declare-fun b_ack!238 () (_ BitVec 64))
(declare-fun x_ack!239 () (_ BitVec 64))
(declare-fun a_ack!237 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!239)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!238)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!239) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!239)
                    ((_ to_fp 11 53) b_ack!238))
            ((_ to_fp 11 53) a_ack!237))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!237) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!239)
                    ((_ to_fp 11 53) b_ack!238))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!239)
                    ((_ to_fp 11 53) b_ack!238))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!239)
               ((_ to_fp 11 53) b_ack!238))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!237) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!239)
               ((_ to_fp 11 53) b_ack!238))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!237))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!239)
                           ((_ to_fp 11 53) b_ack!238))
                   ((_ to_fp 11 53) a_ack!237))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven (CF_log a!1) a!1)
                 a!1)
         (CF_log a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!239)
                           ((_ to_fp 11 53) b_ack!238))
                   ((_ to_fp 11 53) a_ack!237))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (CF_log a!1)
                 (fp.sub roundNearestTiesToEven (CF_log a!1) a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!239)
                           ((_ to_fp 11 53) b_ack!238))
                   ((_ to_fp 11 53) a_ack!237))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven (fp.abs (CF_log a!1)) (fp.abs a!1))
    #x3ff0000000000000)))

(check-sat)
(exit)

(declare-fun a_ack!176 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) a_ack!176) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!176)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) a_ack!176))
       ((_ to_fp 11 53) #x3fd78b56362cef38)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!176)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) a_ack!176)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!176) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!176)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!176)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!176)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!176) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!176) ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       (CF_log a_ack!176)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               (CF_log a_ack!176))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       (CF_log a_ack!176)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       (CF_log a_ack!176)))
(assert (fp.gt (CF_log a_ack!176) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!176)
                           (CF_exp (CF_log a_ack!176)))
                   ((_ to_fp 11 53) a_ack!176)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!176)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!176)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!176)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!176)))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven (CF_log a_ack!176) a!2))
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!3)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_log a_ack!176)
                           (CF_exp (CF_log a_ack!176)))
                   ((_ to_fp 11 53) a_ack!176))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (CF_log a_ack!176)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (CF_log a_ack!176)))))
  (FPCHECK_FMUL_OVERFLOW
    #x3ce4000000000000
    (fp.abs (fp.sub roundNearestTiesToEven (CF_log a_ack!176) a!2))))))

(check-sat)
(exit)

(declare-fun a_ack!45 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!45) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!45)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!45)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!45)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!45) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fcb8618f9d4e78b)
                       ((_ to_fp 11 53) a_ack!45))
               ((_ to_fp 11 53) a_ack!45))
       ((_ to_fp 11 53) #x3fcb8618f9d4e78b)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fcb8618f9d4e78b)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fcb8618f9d4e78b)
                       ((_ to_fp 11 53) a_ack!45)))
       ((_ to_fp 11 53) a_ack!45)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fcb8618f9d4e78b)
                                   ((_ to_fp 11 53) a_ack!45))
                           ((_ to_fp 11 53) #x3ff2dfeb3eb4552f))
                   ((_ to_fp 11 53) #x3ff3262c4f80226f))))
  (FPCHECK_FSUB_ACCURACY #x3fc6ff59f5a2a978 a!1)))

(check-sat)
(exit)

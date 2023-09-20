(declare-fun a_ack!71 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!71) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!71)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!71)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!71)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!71) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fcb8618f9d4e78b)
                       ((_ to_fp 11 53) a_ack!71))
               ((_ to_fp 11 53) a_ack!71))
       ((_ to_fp 11 53) #x3fcb8618f9d4e78b)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fcb8618f9d4e78b)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fcb8618f9d4e78b)
                       ((_ to_fp 11 53) a_ack!71)))
       ((_ to_fp 11 53) a_ack!71)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fcb8618f9d4e78b)
                                   ((_ to_fp 11 53) a_ack!71))
                           ((_ to_fp 11 53) #x3ff2dfeb3eb4552f))
                   ((_ to_fp 11 53) #x3ff3262c4f80226f))))
(let ((a!2 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fc6ff59f5a2a978)
                                  a!1))
                  ((_ to_fp 11 53) #x3fe6aa5184ec20ed))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fcb8618f9d4e78b)
                                   ((_ to_fp 11 53) a_ack!71))
                           ((_ to_fp 11 53) #x3ff2dfeb3eb4552f))
                   ((_ to_fp 11 53) #x3ff3262c4f80226f))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cdc54e5e6272928)))))

(check-sat)
(exit)

(declare-fun a_ack!175 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) a_ack!175) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!175)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) a_ack!175))
       ((_ to_fp 11 53) #x3fd78b56362cef38)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!175)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) a_ack!175)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!175) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!175)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!175)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!175)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!175) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4015bf0a8b145769)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!175)
                                   ((_ to_fp 11 53) #x3fd78b56362cef38)))
                   ((_ to_fp 11 53) #x4015bf0a8b145769))))
  (fp.eq a!1
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!175)
                 ((_ to_fp 11 53) #x3fd78b56362cef38)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!175)
                                  ((_ to_fp 11 53) #x3fd78b56362cef38)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4015bf0a8b145769)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!175)
                                   ((_ to_fp 11 53) #x3fd78b56362cef38)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!175)
                           ((_ to_fp 11 53) #x3fd78b56362cef38)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x4015bf0a8b145769))))
(assert (FPCHECK_FSUB_ACCURACY #x3ffdb7f12eace66f a_ack!175))

(check-sat)
(exit)

(declare-fun a_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!120)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) a_ack!120))
       ((_ to_fp 11 53) #x3fd78b56362cef38)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!120)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) a_ack!120)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!120)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #xbeb0c6f7a0b5ed8d)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!120)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f689374bc6a7efa))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                           ((_ to_fp 11 53) a_ack!120)))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #xbff272f1f7e3704c))
                          ((_ to_fp 11 53) #xbff272f1f7e3704c))
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!120)))
                   ((_ to_fp 11 53) #xbff272f1f7e3704c))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                           ((_ to_fp 11 53) a_ack!120)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #xbff272f1f7e3704c)))
         ((_ to_fp 11 53) #xbff272f1f7e3704c))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfb3978fbf1b8260)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd00080eef3a5d3)
                                   ((_ to_fp 11 53) a_ack!120)))
                   ((_ to_fp 11 53) #xbff272f1f7e3704c))))
  (FPCHECK_FSUB_ACCURACY #xbfc123ba200f6a5c a!1)))

(check-sat)
(exit)

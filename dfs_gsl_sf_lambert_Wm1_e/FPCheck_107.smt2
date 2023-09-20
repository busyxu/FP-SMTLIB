(declare-fun a_ack!177 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) a_ack!177) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!177)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) a_ack!177))
       ((_ to_fp 11 53) #x3fd78b56362cef38)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!177)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) a_ack!177)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!177)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!177)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!177)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!177) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4015bf0a8b145769)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!177)
                                   ((_ to_fp 11 53) #x3fd78b56362cef38)))
                   ((_ to_fp 11 53) #x4015bf0a8b145769))))
  (fp.eq a!1
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!177)
                 ((_ to_fp 11 53) #x3fd78b56362cef38)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!177)
                                  ((_ to_fp 11 53) #x3fd78b56362cef38)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4015bf0a8b145769)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!177)
                                   ((_ to_fp 11 53) #x3fd78b56362cef38)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!177)
                           ((_ to_fp 11 53) #x3fd78b56362cef38)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x4015bf0a8b145769))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ffdb7f12eace66f)
          ((_ to_fp 11 53) a_ack!177))
  #x3ffd1a5a5b112bb4))

(check-sat)
(exit)

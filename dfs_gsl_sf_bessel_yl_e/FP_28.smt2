(declare-fun a_ack!287 () (_ BitVec 32))
(declare-fun b_ack!286 () (_ BitVec 64))
(assert (not (bvslt a_ack!287 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!287)))
(assert (not (= #x00000001 a_ack!287)))
(assert (= #x00000002 a_ack!287))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!286) ((_ to_fp 11 53) #x2a9965fea53d6e98))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!286) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!286)
                                  ((_ to_fp 11 53) b_ack!286)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!286)
                                   ((_ to_fp 11 53) b_ack!286))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!286)
                           ((_ to_fp 11 53) b_ack!286)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!286)
                                   ((_ to_fp 11 53) b_ack!286))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0))
                   ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!286)
                 ((_ to_fp 11 53) b_ack!286)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!286)
                           ((_ to_fp 11 53) b_ack!286))
                   ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e727e4fb7789f5c)
                         a!1)
                 ((_ to_fp 11 53) #x3e727e4fb7789f5c))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!286)
                           ((_ to_fp 11 53) b_ack!286))
                   ((_ to_fp 11 53) #xbe02c9758daf5cd0))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e727e4fb7789f5c)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e727e4fb7789f5c))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e727e4fb7789f5c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!286)
                                   ((_ to_fp 11 53) b_ack!286))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbed845c8a0ce5129)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!286)
                                   ((_ to_fp 11 53) b_ack!286))
                           a!1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #xbed845c8a0ce5129))
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!286)
                         ((_ to_fp 11 53) b_ack!286))
                 a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e727e4fb7789f5c)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!286)
                                   ((_ to_fp 11 53) b_ack!286))
                           ((_ to_fp 11 53) #xbe02c9758daf5cd0)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbed845c8a0ce5129)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!286)
                                   ((_ to_fp 11 53) b_ack!286))
                           a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!286)
                                   ((_ to_fp 11 53) b_ack!286))
                           a!1))))
  (fp.eq a!3 ((_ to_fp 11 53) #xbed845c8a0ce5129))))))

(check-sat)
(exit)

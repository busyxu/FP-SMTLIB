(declare-fun a_ack!4708 () (_ BitVec 64))
(declare-fun b_ack!4707 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4708) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4707) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4708) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4707) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!4708) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!4707) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!4708) ((_ to_fp 11 53) b_ack!4707)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4708) ((_ to_fp 11 53) b_ack!4707))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!4707)
               ((_ to_fp 11 53) a_ack!4708))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!4708) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4708) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4708) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4708) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4708) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4708) ((_ to_fp 11 53) #x4330000000000000))))
(assert (fp.geq ((_ to_fp 11 53) #x3ff0000000000000)
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!4708))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4707) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4707) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4707) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4707) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4707) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4707) ((_ to_fp 11 53) #x4330000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4708)
                       ((_ to_fp 11 53) b_ack!4707))
               ((_ to_fp 11 53) a_ack!4708))
       ((_ to_fp 11 53) b_ack!4707)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4708)
                       ((_ to_fp 11 53) b_ack!4707))
               ((_ to_fp 11 53) b_ack!4707))
       ((_ to_fp 11 53) a_ack!4708)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!4708)
                     ((_ to_fp 11 53) b_ack!4707))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4708)
                    ((_ to_fp 11 53) b_ack!4707))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4708)
                    ((_ to_fp 11 53) b_ack!4707))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4708)
                    ((_ to_fp 11 53) b_ack!4707))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4708)
                    ((_ to_fp 11 53) b_ack!4707))
            ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4708)
                    ((_ to_fp 11 53) b_ack!4707))
            ((_ to_fp 11 53) #x4330000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) b_ack!4707)
                     ((_ to_fp 11 53) a_ack!4708))
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!4707)
                                  ((_ to_fp 11 53) a_ack!4708)))
                  ((_ to_fp 11 53) #x3f6428a2f98d728d))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!4707)
                       ((_ to_fp 11 53) a_ack!4708)))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!4707)
                           ((_ to_fp 11 53) a_ack!4708)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!4707)
                           ((_ to_fp 11 53) a_ack!4708)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4707)
                                   ((_ to_fp 11 53) a_ack!4708))
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!4707)
                           ((_ to_fp 11 53) a_ack!4708)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4707)
                                   ((_ to_fp 11 53) a_ack!4708))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!4707)
                 ((_ to_fp 11 53) a_ack!4708)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4707)
                                   ((_ to_fp 11 53) a_ack!4708)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4707)
                                   ((_ to_fp 11 53) a_ack!4708))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (fp.eq a!3
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 a!2))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4707)
                                   ((_ to_fp 11 53) a_ack!4708)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4707)
                                   ((_ to_fp 11 53) a_ack!4708))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #xbff0000000000000)))))
  (fp.eq a!3 ((_ to_fp 11 53) #xbff0000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4707)
                                   ((_ to_fp 11 53) a_ack!4708)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4707)
                                   ((_ to_fp 11 53) a_ack!4708))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.sub roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    a!2)
            ((_ to_fp 11 53) #xbff0000000000000))
    #x3ff0000000000000))))

(check-sat)
(exit)

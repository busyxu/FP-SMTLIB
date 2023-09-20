(declare-fun b_ack!3028 () (_ BitVec 64))
(declare-fun a_ack!3029 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3028) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3028) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3029) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3028) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3028) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3029) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3028) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3029) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!3028) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3029) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!3028) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3029) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) #x3ff8000000000000) ((_ to_fp 11 53) b_ack!3028))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3028) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3028))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3028)
                       ((_ to_fp 11 53) b_ack!3028))
               ((_ to_fp 11 53) b_ack!3028))
       ((_ to_fp 11 53) b_ack!3028)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3028))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3028)
                       ((_ to_fp 11 53) b_ack!3028))
               ((_ to_fp 11 53) b_ack!3028))
       ((_ to_fp 11 53) b_ack!3028)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3028)
                                   ((_ to_fp 11 53) b_ack!3028)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3028)
                           ((_ to_fp 11 53) b_ack!3028)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3028)
                                   ((_ to_fp 11 53) b_ack!3028))))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!3028)
                 ((_ to_fp 11 53) b_ack!3028)))))

(check-sat)
(exit)

(declare-fun a_ack!205 () (_ BitVec 32))
(declare-fun b_ack!204 () (_ BitVec 64))
(assert (not (bvslt a_ack!205 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!205)))
(assert (= #x00000001 a_ack!205))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!204) ((_ to_fp 11 53) #x1ff0000000000001))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!204) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!204)
                                  ((_ to_fp 11 53) b_ack!204)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!204)
                                   ((_ to_fp 11 53) b_ack!204))
                           ((_ to_fp 11 53) #xbe58a86a49f629d1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!204)
                           ((_ to_fp 11 53) b_ack!204)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbe58a86a49f629d1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!204)
                                   ((_ to_fp 11 53) b_ack!204))
                           ((_ to_fp 11 53) #xbe58a86a49f629d1))
                   ((_ to_fp 11 53) #xbe58a86a49f629d1))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!204)
                 ((_ to_fp 11 53) b_ack!204)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!204)
                           ((_ to_fp 11 53) b_ack!204))
                   ((_ to_fp 11 53) #xbe58a86a49f629d1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ec4ce19ae67b348)
                         a!1)
                 ((_ to_fp 11 53) #x3ec4ce19ae67b348))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!204)
                           ((_ to_fp 11 53) b_ack!204))
                   ((_ to_fp 11 53) #xbe58a86a49f629d1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ec4ce19ae67b348)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ec4ce19ae67b348))))

(check-sat)
(exit)

(declare-fun a_ack!213 () (_ BitVec 32))
(declare-fun b_ack!212 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!213 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!213)))
(assert (= #x00000001 a_ack!213))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!212) ((_ to_fp 11 53) #x1ff0000000000001))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!212) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!212)
                                  ((_ to_fp 11 53) b_ack!212)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!212)
                                   ((_ to_fp 11 53) b_ack!212))
                           ((_ to_fp 11 53) #xbe58a86a49f629d1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!212)
                           ((_ to_fp 11 53) b_ack!212)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbe58a86a49f629d1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!212)
                                   ((_ to_fp 11 53) b_ack!212))
                           ((_ to_fp 11 53) #xbe58a86a49f629d1))
                   ((_ to_fp 11 53) #xbe58a86a49f629d1))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!212)
                 ((_ to_fp 11 53) b_ack!212)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!212)
                           ((_ to_fp 11 53) b_ack!212))
                   ((_ to_fp 11 53) #xbe58a86a49f629d1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ec4ce19ae67b348)
                         a!1)
                 ((_ to_fp 11 53) #x3ec4ce19ae67b348))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!212)
                           ((_ to_fp 11 53) b_ack!212))
                   ((_ to_fp 11 53) #xbe58a86a49f629d1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ec4ce19ae67b348)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ec4ce19ae67b348))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ec4ce19ae67b348)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!212)
                                   ((_ to_fp 11 53) b_ack!212))
                           ((_ to_fp 11 53) #xbe58a86a49f629d1)))))
  (FPCHECK_FADD_ACCURACY
    #xbf26c16c16c16c17
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!212)
                    ((_ to_fp 11 53) b_ack!212))
            a!1))))

(check-sat)
(exit)

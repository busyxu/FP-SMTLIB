(declare-fun a_ack!28 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x410428a2f98d7287))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x554428a2f98d7242)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fc5555555555555)
                       ((_ to_fp 11 53) a_ack!28))
               ((_ to_fp 11 53) #x3fc5555555555555))
       ((_ to_fp 11 53) a_ack!28)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!28))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fc5555555555555)
                       ((_ to_fp 11 53) a_ack!28))
               ((_ to_fp 11 53) a_ack!28))
       ((_ to_fp 11 53) #x3fc5555555555555)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc5555555555555)
                                   ((_ to_fp 11 53) a_ack!28))
                           ((_ to_fp 11 53) a_ack!28))
                   ((_ to_fp 11 53) a_ack!28))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3cc8000000000000)
                         (fp.abs a!1))
                 ((_ to_fp 11 53) #x3cc8000000000000))
         (fp.abs a!1))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc5555555555555)
                                   ((_ to_fp 11 53) a_ack!28))
                           ((_ to_fp 11 53) a_ack!28))
                   ((_ to_fp 11 53) a_ack!28))))
  (not (fp.eq (fp.abs (fp.abs a!1)) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc5555555555555)
                                   ((_ to_fp 11 53) a_ack!28))
                           ((_ to_fp 11 53) a_ack!28))
                   ((_ to_fp 11 53) a_ack!28))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3cc8000000000000)
                         (fp.abs a!1))
                 (fp.abs a!1))
         ((_ to_fp 11 53) #x3cc8000000000000))))

(check-sat)
(exit)

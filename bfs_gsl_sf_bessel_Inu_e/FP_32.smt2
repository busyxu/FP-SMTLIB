(declare-fun b_ack!429 () (_ BitVec 64))
(declare-fun a_ack!430 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!429)
               ((_ to_fp 11 53) b_ack!429))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!430)
                       ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fd0000000000000)
                                  ((_ to_fp 11 53) b_ack!429)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   ((_ to_fp 11 53) b_ack!429))
                           ((_ to_fp 11 53) b_ack!429))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           ((_ to_fp 11 53) b_ack!429)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!429))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!429))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   ((_ to_fp 11 53) b_ack!429))
                           ((_ to_fp 11 53) b_ack!429))
                   ((_ to_fp 11 53) b_ack!429))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fd0000000000000)
                 ((_ to_fp 11 53) b_ack!429)))))

(check-sat)
(exit)

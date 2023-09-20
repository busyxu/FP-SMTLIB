(declare-fun b_ack!524 () (_ BitVec 64))
(declare-fun a_ack!525 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!524) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!525 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!524) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!525)))
(assert (not (= #x00000001 a_ack!525)))
(assert (= #x00000002 a_ack!525))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!524) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!524))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!524))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!524)
                           ((_ to_fp 11 53) b_ack!524))
                   ((_ to_fp 11 53) #x3e208db48ebe51c7))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e93660f974707d5)
                         a!1)
                 ((_ to_fp 11 53) #x3e93660f974707d5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!524)
                           ((_ to_fp 11 53) b_ack!524))
                   ((_ to_fp 11 53) #x3e208db48ebe51c7))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e93660f974707d5)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e93660f974707d5))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e93660f974707d5)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!524)
                                   ((_ to_fp 11 53) b_ack!524))
                           ((_ to_fp 11 53) #x3e208db48ebe51c7)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3eff85d955d36cbb)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!524)
                                   ((_ to_fp 11 53) b_ack!524))
                           a!1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x3eff85d955d36cbb))
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!524)
                         ((_ to_fp 11 53) b_ack!524))
                 a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e93660f974707d5)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!524)
                                   ((_ to_fp 11 53) b_ack!524))
                           ((_ to_fp 11 53) #x3e208db48ebe51c7)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3eff85d955d36cbb)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!524)
                                   ((_ to_fp 11 53) b_ack!524))
                           a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!524)
                                   ((_ to_fp 11 53) b_ack!524))
                           a!1))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3eff85d955d36cbb))))))

(check-sat)
(exit)

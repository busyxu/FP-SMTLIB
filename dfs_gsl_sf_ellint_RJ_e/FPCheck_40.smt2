(declare-fun e_ack!479 () (_ BitVec 32))
(declare-fun a_ack!480 () (_ BitVec 64))
(declare-fun b_ack!476 () (_ BitVec 64))
(declare-fun c_ack!477 () (_ BitVec 64))
(declare-fun d_ack!478 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!479 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!480) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!476) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!477) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!480)
                    ((_ to_fp 11 53) b_ack!476))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!480)
                    ((_ to_fp 11 53) c_ack!477))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!476)
                    ((_ to_fp 11 53) c_ack!477))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!478) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!480) ((_ to_fp 11 53) b_ack!476)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!480) ((_ to_fp 11 53) c_ack!477)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!480) ((_ to_fp 11 53) d_ack!478))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!478) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!480)
                       ((_ to_fp 11 53) b_ack!476))
               ((_ to_fp 11 53) a_ack!480))
       ((_ to_fp 11 53) b_ack!476)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!480)
                       ((_ to_fp 11 53) b_ack!476))
               ((_ to_fp 11 53) b_ack!476))
       ((_ to_fp 11 53) a_ack!480)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!480)
                                   ((_ to_fp 11 53) b_ack!476))
                           ((_ to_fp 11 53) c_ack!477))
                   ((_ to_fp 11 53) d_ack!478))))
(let ((a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) d_ack!478)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!480)
                                   ((_ to_fp 11 53) b_ack!476))
                           ((_ to_fp 11 53) c_ack!477))
                   ((_ to_fp 11 53) d_ack!478))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) d_ack!478)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fc999999999999a)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!480)
                                   ((_ to_fp 11 53) b_ack!476))
                           ((_ to_fp 11 53) c_ack!477))
                   ((_ to_fp 11 53) d_ack!478))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) #x3fc999999999999a))))
  (fp.eq a!2 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!478))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!480)
                                   ((_ to_fp 11 53) b_ack!476))
                           ((_ to_fp 11 53) c_ack!477))
                   ((_ to_fp 11 53) d_ack!478))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!480))))
  (fp.eq (fp.add roundNearestTiesToEven a!2 ((_ to_fp 11 53) a_ack!480))
         (fp.mul roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!478))
                 ((_ to_fp 11 53) #x3fc999999999999a))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!480)
                                   ((_ to_fp 11 53) b_ack!476))
                           ((_ to_fp 11 53) c_ack!477))
                   ((_ to_fp 11 53) d_ack!478))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!480))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   a!2)))
  (fp.eq a!3 ((_ to_fp 11 53) a_ack!480))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!480)
                                   ((_ to_fp 11 53) b_ack!476))
                           ((_ to_fp 11 53) c_ack!477))
                   ((_ to_fp 11 53) d_ack!478))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!480)
                                   ((_ to_fp 11 53) b_ack!476))
                           ((_ to_fp 11 53) c_ack!477))
                   ((_ to_fp 11 53) d_ack!478))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!480))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (not (fp.eq a!4 a!2)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!480)
                                   ((_ to_fp 11 53) b_ack!476))
                           ((_ to_fp 11 53) c_ack!477))
                   ((_ to_fp 11 53) d_ack!478))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!480))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (not (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!480)
                                   ((_ to_fp 11 53) b_ack!476))
                           ((_ to_fp 11 53) c_ack!477))
                   ((_ to_fp 11 53) d_ack!478))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!480))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!478))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (fp.eq (fp.div roundNearestTiesToEven a!2 a!3)
         (fp.mul roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!478))
                 ((_ to_fp 11 53) #x3fc999999999999a)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!480)
                                   ((_ to_fp 11 53) b_ack!476))
                           ((_ to_fp 11 53) c_ack!477))
                   ((_ to_fp 11 53) d_ack!478))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!478))
            ((_ to_fp 11 53) #x3fc999999999999a))
    c_ack!477)))

(check-sat)
(exit)

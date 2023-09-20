(declare-fun e_ack!1654 () (_ BitVec 32))
(declare-fun a_ack!1655 () (_ BitVec 64))
(declare-fun b_ack!1651 () (_ BitVec 64))
(declare-fun c_ack!1652 () (_ BitVec 64))
(declare-fun d_ack!1653 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!1654 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1655) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1651) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1652) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1655)
                    ((_ to_fp 11 53) b_ack!1651))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1655)
                    ((_ to_fp 11 53) c_ack!1652))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1651)
                    ((_ to_fp 11 53) c_ack!1652))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1653) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1655) ((_ to_fp 11 53) b_ack!1651)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1655) ((_ to_fp 11 53) c_ack!1652)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1655) ((_ to_fp 11 53) d_ack!1653)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1655) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1655)
                       ((_ to_fp 11 53) b_ack!1651))
               ((_ to_fp 11 53) a_ack!1655))
       ((_ to_fp 11 53) b_ack!1651)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1655)
                       ((_ to_fp 11 53) b_ack!1651))
               ((_ to_fp 11 53) b_ack!1651))
       ((_ to_fp 11 53) a_ack!1655)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1655)
                                   ((_ to_fp 11 53) b_ack!1651))
                           ((_ to_fp 11 53) c_ack!1652))
                   ((_ to_fp 11 53) d_ack!1653))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) d_ack!1653))
                 a!1)
         ((_ to_fp 11 53) d_ack!1653))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1655)
                                   ((_ to_fp 11 53) b_ack!1651))
                           ((_ to_fp 11 53) c_ack!1652))
                   ((_ to_fp 11 53) d_ack!1653))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) d_ack!1653))
                 ((_ to_fp 11 53) d_ack!1653))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1655)
                                   ((_ to_fp 11 53) b_ack!1651))
                           ((_ to_fp 11 53) c_ack!1652))
                   ((_ to_fp 11 53) d_ack!1653))))
(let ((a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) d_ack!1653)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1655)
                                   ((_ to_fp 11 53) b_ack!1651))
                           ((_ to_fp 11 53) c_ack!1652))
                   ((_ to_fp 11 53) d_ack!1653))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1653))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) d_ack!1653)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fc999999999999a)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1655)
                                   ((_ to_fp 11 53) b_ack!1651))
                           ((_ to_fp 11 53) c_ack!1652))
                   ((_ to_fp 11 53) d_ack!1653))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1653))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) #x3fc999999999999a))))
  (fp.eq a!2 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!1653))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1655)
                                   ((_ to_fp 11 53) b_ack!1651))
                           ((_ to_fp 11 53) c_ack!1652))
                   ((_ to_fp 11 53) d_ack!1653))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1653))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) b_ack!1651))))
  (FPCHECK_FDIV_INVALID
    a!2
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!1653))
            ((_ to_fp 11 53) #x3fc999999999999a))))))

(check-sat)
(exit)

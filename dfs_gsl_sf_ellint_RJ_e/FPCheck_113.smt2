(declare-fun e_ack!1459 () (_ BitVec 32))
(declare-fun a_ack!1460 () (_ BitVec 64))
(declare-fun b_ack!1456 () (_ BitVec 64))
(declare-fun c_ack!1457 () (_ BitVec 64))
(declare-fun d_ack!1458 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!1459 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1460) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1456) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1457) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1460)
                    ((_ to_fp 11 53) b_ack!1456))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1460)
                    ((_ to_fp 11 53) c_ack!1457))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1456)
                    ((_ to_fp 11 53) c_ack!1457))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1458) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1460) ((_ to_fp 11 53) b_ack!1456)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1460) ((_ to_fp 11 53) c_ack!1457)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1460) ((_ to_fp 11 53) d_ack!1458)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1460) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1460)
                       ((_ to_fp 11 53) b_ack!1456))
               ((_ to_fp 11 53) a_ack!1460))
       ((_ to_fp 11 53) b_ack!1456)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1460)
                       ((_ to_fp 11 53) b_ack!1456))
               ((_ to_fp 11 53) b_ack!1456))
       ((_ to_fp 11 53) a_ack!1460)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1460)
                                   ((_ to_fp 11 53) b_ack!1456))
                           ((_ to_fp 11 53) c_ack!1457))
                   ((_ to_fp 11 53) d_ack!1458))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) d_ack!1458))
                 a!1)
         ((_ to_fp 11 53) d_ack!1458))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1460)
                                   ((_ to_fp 11 53) b_ack!1456))
                           ((_ to_fp 11 53) c_ack!1457))
                   ((_ to_fp 11 53) d_ack!1458))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) d_ack!1458))
                 ((_ to_fp 11 53) d_ack!1458))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1460)
                                   ((_ to_fp 11 53) b_ack!1456))
                           ((_ to_fp 11 53) c_ack!1457))
                   ((_ to_fp 11 53) d_ack!1458))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!1458))
    #x3fc999999999999a)))

(check-sat)
(exit)

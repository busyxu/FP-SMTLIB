(declare-fun e_ack!1464 () (_ BitVec 32))
(declare-fun a_ack!1465 () (_ BitVec 64))
(declare-fun b_ack!1461 () (_ BitVec 64))
(declare-fun c_ack!1462 () (_ BitVec 64))
(declare-fun d_ack!1463 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!1464 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1465) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1461) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1465)
                    ((_ to_fp 11 53) b_ack!1461))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1465)
                    ((_ to_fp 11 53) c_ack!1462))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1461)
                    ((_ to_fp 11 53) c_ack!1462))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1463) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1465) ((_ to_fp 11 53) b_ack!1461)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1465) ((_ to_fp 11 53) c_ack!1462))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1462) ((_ to_fp 11 53) d_ack!1463))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!1463) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1465)
                                   ((_ to_fp 11 53) b_ack!1461))
                           ((_ to_fp 11 53) c_ack!1462))
                   ((_ to_fp 11 53) d_ack!1463))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!1463))
            ((_ to_fp 11 53) #x3fc999999999999a))
    d_ack!1463)))

(check-sat)
(exit)

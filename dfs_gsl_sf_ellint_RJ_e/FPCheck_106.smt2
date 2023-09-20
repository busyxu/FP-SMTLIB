(declare-fun e_ack!1384 () (_ BitVec 32))
(declare-fun a_ack!1385 () (_ BitVec 64))
(declare-fun b_ack!1381 () (_ BitVec 64))
(declare-fun c_ack!1382 () (_ BitVec 64))
(declare-fun d_ack!1383 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!1384 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1385) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1381) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1382) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1385)
                    ((_ to_fp 11 53) b_ack!1381))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1385)
                    ((_ to_fp 11 53) c_ack!1382))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1381)
                    ((_ to_fp 11 53) c_ack!1382))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1383) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1385) ((_ to_fp 11 53) b_ack!1381)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1385) ((_ to_fp 11 53) c_ack!1382)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1385) ((_ to_fp 11 53) d_ack!1383)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1385) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1385)
                       ((_ to_fp 11 53) b_ack!1381))
               ((_ to_fp 11 53) a_ack!1385))
       ((_ to_fp 11 53) b_ack!1381)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1385)
                       ((_ to_fp 11 53) b_ack!1381))
               ((_ to_fp 11 53) b_ack!1381))
       ((_ to_fp 11 53) a_ack!1385)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.add roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1385)
                  ((_ to_fp 11 53) b_ack!1381))
          ((_ to_fp 11 53) c_ack!1382))
  d_ack!1383))

(check-sat)
(exit)

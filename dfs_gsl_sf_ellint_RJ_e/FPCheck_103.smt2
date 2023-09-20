(declare-fun e_ack!1349 () (_ BitVec 32))
(declare-fun a_ack!1350 () (_ BitVec 64))
(declare-fun b_ack!1346 () (_ BitVec 64))
(declare-fun c_ack!1347 () (_ BitVec 64))
(declare-fun d_ack!1348 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!1349 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1350) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1346) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1347) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1350)
                    ((_ to_fp 11 53) b_ack!1346))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1350)
                    ((_ to_fp 11 53) c_ack!1347))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1346)
                    ((_ to_fp 11 53) c_ack!1347))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1348) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1350) ((_ to_fp 11 53) b_ack!1346)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1350) ((_ to_fp 11 53) c_ack!1347)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1350) ((_ to_fp 11 53) d_ack!1348)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1350) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1350)
                       ((_ to_fp 11 53) b_ack!1346))
               ((_ to_fp 11 53) a_ack!1350))
       ((_ to_fp 11 53) b_ack!1346)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1350)
                       ((_ to_fp 11 53) b_ack!1346))
               ((_ to_fp 11 53) b_ack!1346))
       ((_ to_fp 11 53) a_ack!1350)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1350)
          ((_ to_fp 11 53) b_ack!1346))
  c_ack!1347))

(check-sat)
(exit)

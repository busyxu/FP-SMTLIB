(declare-fun a_ack!1353 () (_ BitVec 64))
(declare-fun b_ack!1352 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) a_ack!1353) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1352) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1352) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) b_ack!1352) (CF_floor b_ack!1352))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1353)
                    ((_ to_fp 11 53) b_ack!1352))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1352) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1352) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) b_ack!1352) (CF_floor b_ack!1352))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1353) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1352) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1353)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1353)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #xbff007228b4cd147))

(check-sat)
(exit)

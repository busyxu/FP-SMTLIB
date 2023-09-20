(declare-fun w0_ack!1360 () (_ BitVec 64))
(declare-fun w1_ack!1357 () (_ BitVec 64))
(declare-fun w2_ack!1358 () (_ BitVec 64))
(declare-fun w3_ack!1359 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!1360) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w1_ack!1357) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!1358) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!1359) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!1360) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ec80000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) w0_ack!1360)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w0_ack!1360))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x409ec80000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x409ec80000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)))))
  (FPCHECK_FSUB_ACCURACY a!2 #x0000000000000000))))

(check-sat)
(exit)

(declare-fun x1_ack!1287 () (_ BitVec 64))
(declare-fun x0_ack!1291 () (_ BitVec 64))
(declare-fun y0_ack!1288 () (_ BitVec 64))
(declare-fun x_ack!1289 () (_ BitVec 64))
(declare-fun y_ack!1290 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1291) ((_ to_fp 11 53) x1_ack!1287))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1288) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1289) ((_ to_fp 11 53) x0_ack!1291))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1289) ((_ to_fp 11 53) x1_ack!1287))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1290) ((_ to_fp 11 53) y0_ack!1288))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1290) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1287)
                       ((_ to_fp 11 53) x0_ack!1291))
               ((_ to_fp 11 53) x0_ack!1291))
       ((_ to_fp 11 53) x1_ack!1287)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1287)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1287)
                       ((_ to_fp 11 53) x0_ack!1291)))
       ((_ to_fp 11 53) x0_ack!1291)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1288))
               ((_ to_fp 11 53) y0_ack!1288))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1288)))
       ((_ to_fp 11 53) y0_ack!1288)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1289)
          ((_ to_fp 11 53) x0_ack!1291))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1287)
          ((_ to_fp 11 53) x0_ack!1291))))

(check-sat)
(exit)

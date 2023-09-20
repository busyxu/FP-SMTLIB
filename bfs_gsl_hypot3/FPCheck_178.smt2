(declare-fun c_ack!962 () (_ BitVec 64))
(declare-fun b_ack!961 () (_ BitVec 64))
(declare-fun a_ack!963 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!961))
       (fp.abs ((_ to_fp 11 53) c_ack!962))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!963))
       (fp.abs ((_ to_fp 11 53) b_ack!961))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!963))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!963))
                           (fp.abs ((_ to_fp 11 53) a_ack!963)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!963))
                           (fp.abs ((_ to_fp 11 53) a_ack!963)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!961))
                           (fp.abs ((_ to_fp 11 53) a_ack!963)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!961))
                           (fp.abs ((_ to_fp 11 53) a_ack!963))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!963))
                           (fp.abs ((_ to_fp 11 53) a_ack!963)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!963))
                           (fp.abs ((_ to_fp 11 53) a_ack!963)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!961))
                           (fp.abs ((_ to_fp 11 53) a_ack!963)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!961))
                           (fp.abs ((_ to_fp 11 53) a_ack!963))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) c_ack!962))
  (fp.abs ((_ to_fp 11 53) a_ack!963))))

(check-sat)
(exit)

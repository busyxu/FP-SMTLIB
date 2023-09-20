(declare-fun b_ack!1153 () (_ BitVec 32))
(declare-fun a_ack!1155 () (_ BitVec 32))
(declare-fun c_ack!1154 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!1153 #x00000000)))
(assert (not (bvslt a_ack!1155 #x00000000)))
(assert (not (= #x00000000 b_ack!1153)))
(assert (not (= #x00000001 b_ack!1153)))
(assert (= #x00000000 a_ack!1155))
(assert (not (bvslt b_ack!1153 #x00000000)))
(assert (not (= #x00000000 b_ack!1153)))
(assert (not (= #x00000001 b_ack!1153)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1154) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1154))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!1153))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1154))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!1154))))))
  (not a!1)))
(assert (bvslt #x00000002 b_ack!1153))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1154)
                                   ((_ to_fp 11 53) c_ack!1154))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.gt a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x7feccccccccccccc)
                 (fp.abs ((_ to_fp 11 53) c_ack!1154))))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1154)
                                   ((_ to_fp 11 53) c_ack!1154))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW a!1 #x3cb0000000000000)))

(check-sat)
(exit)

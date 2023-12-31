(declare-fun a_ack!2159 () (_ BitVec 64))
(declare-fun b_ack!2156 () (_ BitVec 64))
(declare-fun c_ack!2157 () (_ BitVec 64))
(declare-fun d_ack!2158 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2159) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2156) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!2157)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!2157)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!2157) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2157))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2159) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2156) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!2158)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2157)
                       ((_ to_fp 11 53) a_ack!2159))
               ((_ to_fp 11 53) a_ack!2159))
       ((_ to_fp 11 53) c_ack!2157)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!2157)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2157)
                       ((_ to_fp 11 53) a_ack!2159)))
       ((_ to_fp 11 53) a_ack!2159)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2157)
                       ((_ to_fp 11 53) a_ack!2159))
               ((_ to_fp 11 53) b_ack!2156))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!2157)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!2157)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!2157) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2157))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (FPCHECK_FSUB_OVERFLOW c_ack!2157 a_ack!2159))

(check-sat)
(exit)

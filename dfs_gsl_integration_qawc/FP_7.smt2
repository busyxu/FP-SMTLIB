(declare-fun limit_ack!176 () (_ BitVec 64))
(declare-fun a_ack!177 () (_ BitVec 64))
(declare-fun b_ack!172 () (_ BitVec 64))
(declare-fun epsabs_ack!174 () (_ BitVec 64))
(declare-fun epsrel_ack!175 () (_ BitVec 64))
(declare-fun c_ack!173 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!176)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!172) ((_ to_fp 11 53) a_ack!177))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!174) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!175)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!175)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!173) ((_ to_fp 11 53) a_ack!177))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!173) ((_ to_fp 11 53) b_ack!172))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!173))
                   ((_ to_fp 11 53) b_ack!172))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!177))
                 ((_ to_fp 11 53) a_ack!177))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!173))
                   ((_ to_fp 11 53) b_ack!172))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!177)))
         ((_ to_fp 11 53) a_ack!177))))

(check-sat)
(exit)

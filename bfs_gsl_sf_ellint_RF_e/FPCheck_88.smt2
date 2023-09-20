(declare-fun d_ack!832 () (_ BitVec 32))
(declare-fun a_ack!833 () (_ BitVec 64))
(declare-fun b_ack!830 () (_ BitVec 64))
(declare-fun c_ack!831 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!832 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!833) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!830) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!831) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!833)
                    ((_ to_fp 11 53) b_ack!830))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!833)
                    ((_ to_fp 11 53) c_ack!831))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!830)
                    ((_ to_fp 11 53) c_ack!831))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!833) ((_ to_fp 11 53) b_ack!830))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!830) ((_ to_fp 11 53) c_ack!831)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!830) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!833)
                       ((_ to_fp 11 53) b_ack!830))
               ((_ to_fp 11 53) a_ack!833))
       ((_ to_fp 11 53) b_ack!830)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!833)
                       ((_ to_fp 11 53) b_ack!830))
               ((_ to_fp 11 53) b_ack!830))
       ((_ to_fp 11 53) a_ack!833)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!833)
          ((_ to_fp 11 53) b_ack!830))
  c_ack!831))

(check-sat)
(exit)
